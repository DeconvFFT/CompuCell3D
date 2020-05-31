///////////////////////////////////////////////////////////////////////////////
// @File Name:     Logger.h                                                  //
// @Author:        Pankaj Choudhary                                          //
// @Version:       0.0.1                                                     //
// @L.M.D:         13th April 2015                                           //
// @Description:   For Logging into file          
// @Adapted by: Maciek Swat
// @M.M.D          29th May 2020 
//                                                                           // 
// Detail Description:                                                       //
// Implemented complete logging mechanism, Supporting multiple logging type  //
// like as file based logging, console base logging etc. It also supported   //
// for different log type.                                                   //
//                                                                           //
// Thread Safe logging mechanism. Compatible with VC++ (Windows platform)   //
// as well as G++ (Linux platform)                                           //
//                                                                           //
// Supported Log Type: ERROR, ALARM, ALWAYS, INFO, BUFFER, TRACE, DEBUG      //
//                                                                           //
// No control for ERROR, ALRAM and ALWAYS messages. These type of messages   //
// should be always captured.                                                //
//                                                                           //
// BUFFER log type should be use while logging raw buffer or raw messages    //
//                                                                           //
// Having direct interface as well as C++ Singleton inface. can use          //
// whatever interface want.                                                   //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

#ifndef _MINILOGGER_H_
#define _MINILOGGER_H_


#pragma once 
#include <memory> // PImpl 
#include <string> 
#include <functional>
#include <unordered_map>


namespace  CompuCell3D
{

    enum class LogLevel
    {
        NO_LOG_LEVEL = 1,
        INFO = 2,
        BUFFER = 3,
        TRACE = 4,
        DEBUG = 5,
        ALL_LOG = 6,
    };
    
        
    enum class LogType
    {
        NO_LOG = 1,
        CONSOLE_LOG = 2,
        FILE_LOG = 3,
    };
    
    
    enum class LogMessageType
    {
        DEBUG_LOG,
        ERROR_LOG,        
        INFO_LOG,
        TRACE_LOG,
        ALARM_LOG,        
        BUFFER_LOG
    };


class MiniLogger {
public:
    // Constructor and Destructors 
    static MiniLogger* getInstance() throw ();


    // Asssignment Operator and Copy Constructor 

    void initialize(std::string log_fname, std::string log_type = "file_log", std::string log_level = "enable_log");

    void _error(const char* text) throw();

    // Interface for Alarm Log 
    void _alarm(const char* text) throw();

    // Interface for Always Log 
    void _always(const char* text) throw();

    // Interface for Buffer Log 
    void _buffer(const char* text) throw();

    // Interface for Info Log 
    void _info(const char* text) throw();

    // Interface for Trace log 
    void _trace(const char* text) throw();

    // Interface for Debug log 
    void _debug(const char* text) throw();


    // Interfaces to control log levels
    void updateLogLevel(LogLevel logLevel);
    void enaleLog();  // Enable all log levels
    void disableLog(); // Disable all log levels, except error and alarm
    
    // Interfaces to control log Types
    void updateLogType(LogType logType);
    void enableConsoleLogging();
    void enableFileLogging();

    std::string getLogType();
    std::string getLogLevel();
    std::string getLogFname();


    

    // Getter 
    int getSalary();

    // Setter 
    void setSalary(int);



private:
    // Internal implementation class 
    class Impl;
    // Pointer to the internal implementation 
    std::unique_ptr<Impl> pimpl;
    ~MiniLogger();
    MiniLogger();

    MiniLogger(const MiniLogger& other);
    MiniLogger& operator=(MiniLogger rhs);

    static MiniLogger * m_Instance;

};



class MiniLoggerStream {
public:

    using logger_fcn_t = std::function<void(MiniLogger *, std::string& )>;

    MiniLoggerStream(MiniLogger *logger_p) {
            
        this->logger_p = logger_p;

    }

    ~MiniLoggerStream() {
        using namespace std;
        try{
            logger_fcn_map.at(this->logMessageType)(this->logger_p, this->logString);
        }
        catch (const out_of_range &e)
        {
            cerr << "Exception in at method while logging " << e.what() << endl;
        }
            

    }

    void setLogLevel(const LogMessageType & logMessageType = LogMessageType::DEBUG_LOG) {
        this->logMessageType = logMessageType;
    }

    template<typename T, typename ... Args >
    void log(const T& value, const Args& ... args) {
        logger_p->_debug(to_str(value) + to_str(args...));
    }

    void addString(std::string & str) {
        this->logString += str;
    }
    typedef double (MiniLoggerStream::*log_function_t)(std::string & text);

private:
        
    std::unordered_map<LogMessageType, logger_fcn_t> logger_fcn_map = {
        { LogMessageType::DEBUG_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_debug(text.c_str()); } },
        { LogMessageType::ERROR_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_error(text.c_str()); } },
        { LogMessageType::INFO_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_info(text.c_str()); } },
        { LogMessageType::TRACE_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_trace(text.c_str()); } },
        { LogMessageType::ALARM_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_alarm(text.c_str()); } },
        { LogMessageType::BUFFER_LOG , [](MiniLogger * logger_p, std::string& text) { logger_p->_buffer(text.c_str()); } },

    };

private:
    MiniLogger *logger_p;
    std::string logString;
    LogMessageType  logMessageType;    

};


template<typename T>
MiniLoggerStream operator<<(MiniLogger& logger, const T & val) {        
    MiniLoggerStream logger_stream(&logger);

    logger_stream << val;

    return logger_stream;
}

//specialization for stream modifier LogLevel -  implementation must be defined in implementation file
template<>
MiniLoggerStream CompuCell3D::operator<<(MiniLogger& logger, const LogMessageType &  val);

template<typename T>
MiniLoggerStream& operator<<(MiniLoggerStream& loggerStream, const T & val) {
    ostringstream s_stream;
    s_stream << val << " ";
    loggerStream.addString(s_stream.str());
        
    return loggerStream;

};




//// C++ Header File(s)
//#include <iostream>
//#include <fstream>
//#include <sstream>
//#include <string>
//#include <map>
//#include <unordered_map>
//#include <mutex>
//#include "LoggerUtils.h"
//
//
//#ifdef WIN32
//// Win Socket Header File(s)
//#include <Windows.h>
//#include <process.h>
//#endif
//
//namespace  CompuCell3D
//{
//    // Direct Interface for logging into log file or console using MACRO(s)
//#define LOG_ERROR(x)    Logger::getInstance()->_error(x)
//#define LOG_ALARM(x)	   Logger::getInstance()->_alarm(x)
//#define LOG_ALWAYS(x)	Logger::getInstance()->_always(x)
//#define LOG_INFO(x)     Logger::getInstance()->_info(x)
//#define LOG_BUFFER(x)   Logger::getInstance()->_buffer(x)
//#define LOG_TRACE(x)    Logger::getInstance()->_trace(x)
//#define LOG_DEBUG(x)    Logger::getInstance()->_debug(x)
//
//    typedef enum LOG_LEVEL
//    {
//        NO_LOG_LEVEL = 1,
//        INFO = 2,
//        BUFFER = 3,
//        TRACE = 4,
//        DEBUG = 5,
//        ALL_LOG = 6,
//    }LogLevel;
//
//    
//    typedef enum LOG_TYPE
//    {
//        NO_LOG = 1,
//        CONSOLE_LOG = 2,
//        FILE_LOG = 3,
//    }LogType;
//
//
//    enum class LogMessageType
//    {
//        DEBUG_LOG,
//        ERROR_LOG,        
//        INFO_LOG,
//        TRACE_LOG,
//    };
//
//    class MiniLoggerStream;
//
//    class MiniLogger
//    {
//    public:
//        static MiniLogger* getInstance() throw ();
//        
//        void initialize(std::string log_fname, std::string log_type="file_log", std::string log_level="enable_log");
//        // Interface for Error Log 
//
//        // Interface for Debug log 
//        void _debug(const char* text) throw();        
//
//        // Error and Alarm log must be always enable
//        // Hence, there is no interfce to control error and alarm logs
//
//        // Interfaces to control log levels
//        void updateLogLevel(LogLevel logLevel);
//        void enaleLog();  // Enable all log levels
//        void disableLog(); // Disable all log levels, except error and alarm
//
//        // Interfaces to control log Types
//        void updateLogType(LogType logType);
//        void enableConsoleLogging();
//        void enableFileLogging();
//
//        std::string getLogType();
//        std::string getLogLevel();
//        std::string getLogFname();
//        
//
//        MiniLoggerStream getLoggerStream(std::string message_type);
//        
//
//    protected:
//        class MiniLoggerImpl;
//        std::unique_ptr<MiniLoggerImpl> p_logger;
//        MiniLogger();
//        ~MiniLogger();
//    private:
//        static MiniLogger*          m_Instance;
//
//    //    // Wrapper function for lock/unlock
//    //    // For Extensible feature, lock and unlock should be in protected
//    //    void lock();
//    //    void unlock();
//
//    //    std::string getCurrentTime();
//
//
//    //private:
//    //    void logIntoFile(std::string& data);
//    //    void logOnConsole(std::string& data);
//    //    LogType stringToLogType(std::string log_type_str);
//    //    LogLevel stringToLogLevel(std::string log_level_str);
//
//    //    Logger(const Logger& obj) {}
//    //    void operator=(const Logger& obj) {}
//
//    //private:
//    //    static Logger*          m_Instance;
//    //    std::ofstream           m_File;
//
//    //    std::mutex m_Mutex;
//
//    //    std::string _log_type;
//    //    std::string _log_level;
//    //    std::string _log_fname;
//
//    //    LogLevel                m_LogLevel;
//    //    LogType                 m_LogType;
//
//    //    const std::map<std::string,LogType> log_type_map = {
//    //        { "no_log", NO_LOG },
//    //        { "console_log", CONSOLE_LOG },
//    //        { "file_log", FILE_LOG }
//    //    };
//
//    //    const std::map<std::string, LogLevel> log_level_map = {
//    //        { "disable_log", NO_LOG_LEVEL },
//    //        { "log_level_info", INFO },
//    //        { "log_level_buffer", BUFFER },
//    //        { "log_level_trace", TRACE }, 
//    //        { "enable_log", ALL_LOG },
//    //        {}
//    //    };
//    //    
//    };
//
//    class MiniLoggerStream {
//    public:
//
//        using logger_fcn_t = std::function<void(Logger *, std::string& )>;
//
//        MiniLoggerStream(Logger *logger_p) {
//            
//            this->logger_p = logger_p;
//
//        }
//
//        ~MiniLoggerStream() {
//            using namespace std;
//            try{
//                logger_fcn_map.at(this->logMessageType)(this->logger_p, this->logString);
//            }
//            catch (const out_of_range &e)
//            {
//                cerr << "Exception in at method while logging " << e.what() << endl;
//            }
//            
//
//        }
//
//        void setLogLevel(const LogMessageType & logMessageType = LogMessageType::DEBUG_LOG) {
//            this->logMessageType = logMessageType;
//        }
//
//        template<typename T, typename ... Args >
//        void log(const T& value, const Args& ... args) {
//            logger_p->_debug(to_str(value) + to_str(args...));
//        }
//
//        void addString(std::string & str) {
//            this->logString += str;
//        }
//        typedef double (MiniLoggerStream::*log_function_t)(std::string & text);
//
//    private:
//        
//        std::unordered_map<LogMessageType, logger_fcn_t> logger_fcn_map = {
//            { LogMessageType::DEBUG_LOG , [](Logger * logger_p, std::string& text) { logger_p->_debug(text.c_str()); } },
//            { LogMessageType::ERROR_LOG , [](Logger * logger_p, std::string& text) { logger_p->_error(text.c_str()); } },
//            { LogMessageType::INFO_LOG , [](Logger * logger_p, std::string& text) { logger_p->_info(text.c_str()); } },
//            { LogMessageType::TRACE_LOG , [](Logger * logger_p, std::string& text) { logger_p->_trace(text.c_str()); } },
//
//        };
//
//    private:
//        MiniLogger *logger_p;
//        std::string logString;
//        LogMessageType  logMessageType;    
//
//    };
//
//    template<typename T>
//    MiniLoggerStream operator<<(MiniLogger& logger, const T & val) {        
//        MiniLoggerStream logger_stream(&logger);
//
//        logger_stream << val;
//
//        return logger_stream;
//    }
//
//    //specialization for stream modifier LogLevel -  implementation must be defined in implementation file
//    template<>
//    MiniLoggerStream CompuCell3D::operator<<Mini(Logger& logger, const LogMessageType &  val);
//
//    template<typename T>
//    MiniLoggerStream& operator<<(MiniLoggerStream& loggerStream, const T & val) {
//        ostringstream s_stream;
//        s_stream << val << " ";
//        loggerStream.addString(s_stream.str());
//        
//        return loggerStream;
//
//    };
//

}



#endif