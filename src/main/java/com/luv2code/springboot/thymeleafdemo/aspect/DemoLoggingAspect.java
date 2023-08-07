package com.luv2code.springboot.thymeleafdemo.aspect;

import java.util.logging.Logger;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class DemoLoggingAspect {

    private Logger myLogger = Logger.getLogger(getClass().getName());

    @Pointcut("execution(* com.luv2code.springboot.thymeleafdemo.controller.*.*(..))")
    private void forControllerPackage() {}

    @Pointcut("execution(* com.luv2code.springboot.thymeleafdemo.controller.*.*(..))")
    private void forServicePackage() {}

    @Pointcut("execution(* com.luv2code.springboot.thymeleafdemo.controller.*.*(..))")
    private void forDaoPackage() {}

    @Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()")
    private void forAppViews() {}

    @Before("forAppViews()")
    public void before(JoinPoint theJoinPoint) {

        String theMethod = theJoinPoint.getSignature().toShortString();
        myLogger.info("======================>>>> in @Before: calling method: " + theMethod);

        Object[] args = theJoinPoint.getArgs();

        for(Object tempArg : args) {
            myLogger.info("======>> arguement: " + tempArg);
        }
    }

    @AfterReturning(
        pointcut = "forAppViews()" , 
        returning = "result"
    )
    public void afterReturning(JoinPoint theJoinPoint, Object result) {

        String theMethod = theJoinPoint.getSignature().toShortString();
        myLogger.info("=========>> in @AfterReturning: from method: " + theMethod);

        myLogger.info("==========>> result" + result);
    }

    
}