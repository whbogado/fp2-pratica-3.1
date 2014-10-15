Feature: Avalia a Prática 3.1 de IF52C-Fundamentos de Programação 2
    Como professor da disciplica de Fundamentos de Programação 2
    Quero avaliar a prática 3.1
    A fim de verificar a compreensão dos estudantes

    Background:
        Given the maximum grade is 100
        Given the main class is 'Pratica31'
        Given I set the script timeout to 3000
        Given I evaluate 'import grader.test.*;'
    
    Scenario: Verifica se a classe existe no pacote padrão e contem o método main (15 pontos)
        Given I report 'Iniciando avaliação...'
        Given I report 'Avaliando item 3...'
        Given class 'Pratica31' exists somewhere store class in <mainClass>
        Then award 5 points
        Given the class <mainClass> is in the 'default' package
        And class <mainClass> has 'public' modifier
        Then award 5 points
        Given class <mainClass> declares 'main(java.lang.String[])' method save in <mainMethod>
        And method <mainMethod> returns type 'void'
        And member <mainMethod> has 'public' modifier
        And member <mainMethod> has 'static' modifier
        Then award 5 points

    Scenario: Verifica se a variável meuNome existe e está inicializada (15 pontos)
        Given I report 'Avaliando item 4...'
        Given class <mainClass
        Given class 'Pratica31' exists somewhere store class in <mainClass>
        Then award 5 points
        Given the class <mainClass> is in the 'default' package
        And class <mainClass> has 'public' modifier
        Then award 5 points
        Given class <mainClass> declares 'main(java.lang.String[])' method save in <mainMethod>
        And method <mainMethod> returns type 'void'
        And member <mainMethod> has 'public' modifier
        And member <mainMethod> has 'static' modifier
        Then award 5 points

#    Scenario: Check AvisoFinal output (0.2)
#        Given I report 'GRADING TASK 2...'
#        Given class 'AvisoFinal' exists somewhere store class in <avisoFinalClass>
#        And I import <avisoFinalClass>
#        Given I evaluate 'compTest = new Compromisso(new Date(System.currentTimeMillis() + 10000), "compTest")'
#        And I evaluate 'avisoTest = new AvisoFinal(compTest)'
#        And I set output to <avisoOut>
#        And I evaluate 'avisoTest.run()'
#        And I set output to <default>
#        Then award .1 points
#        And <avisoOut> matches regex '\s*compTest\s+começa\s+agora.*\s*'
#        Then award .1 points
#
#    Scenario: Check AvisoFinal.run() (0.3)
#        Given I report 'GRADING TASK 3...'
#        Given class 'AvisoFinal' exists somewhere store class in <avisoFinalClass>
#        And I import <avisoFinalClass>
#        Given I evaluate 'compTest = new Compromisso(new Date(System.currentTimeMillis() + 10000), "compTest")'
#        And I evaluate 'java.util.Timer timerTest = new java.util.Timer()'
#        And I evaluate 'AvisoTest avisoTest1 = new AvisoTest(compTest)'
#        And I evaluate 'AvisoTest avisoTest2 = new AvisoTest(compTest)'
#        And I evaluate 'timerTest.schedule(avisoTest1, 0, 100)'
#        And I evaluate 'timerTest.schedule(avisoTest2, 0, 110)'
#        And I evaluate 'compTest.registraAviso(avisoTest1)'
#        And I evaluate 'compTest.registraAviso(avisoTest2)'
#        And I evaluate 'avisoTest = new AvisoFinal(compTest)'
#        And I evaluate 'avisoTest.run()'
#        And expression 'avisoTest1.cancel() || avisoTest2.cancel()' evaluates to <false>
#        And I evaluate 'timerTest.cancel()'
#        Then award .3 points
#
#    Scenario: Implement method novoAviso(Compromisso, int) (0.3)
#        Given I report 'GRADING TASK 4...'
#        Given class 'Agenda' exists somewhere store class in <agendaClass>
#        And I import <agendaClass>
#        And I evaluate 'Date dateTest = new Date(System.currentTimeMillis() + 10000)'
#        And I evaluate 'Agenda agendaTest = new Agenda("Test Agenda")'
#        And I evaluate 'Compromisso compTest = new Compromisso(dateTest, "compTest")'
#        And I evaluate 'agendaTest.novoCompromisso(compTest)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 5)'
#        And expression 'compTest.getAvisos().size() == 2' evaluates to <true>
#        Then award .1 points
#        Given I evaluate 'avisoTest = compTest.getAvisos().get(1)'
#        And expression 'avisoTest.scheduledExecutionTime()' evaluates to <dateTest.getTime()-5000>
#        Then award .2 points
#
#    Scenario: Implement method novoAviso(Compromisso, int, int) (0.3)
#        Given I report 'GRADING TASK 5...'
#        Given class 'Agenda' exists somewhere store class in <agendaClass>
#        And I import <agendaClass>
#        And I evaluate 'Date dateTest = new Date(System.currentTimeMillis() + 10000)'
#        And I evaluate 'Agenda agendaTest = new Agenda("Test Agenda")'
#        And I evaluate 'Compromisso compTest = new Compromisso(dateTest, "compTest")'
#        And I evaluate 'agendaTest.novoCompromisso(compTest)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 5, 1)'
#        And expression 'compTest.getAvisos().size() == 2' evaluates to <true>
#        Then award .1 points
#        Given I evaluate 'avisoTest = compTest.getAvisos().get(1)'
#        And expression 'avisoTest.scheduledExecutionTime()' evaluates to <dateTest.getTime()-6000>
#        Then award .2 points
#
#    Scenario: Implement method cancela(Compromisso) (0.3)
#        Given I report 'GRADING TASK 6...'
#        Given class 'Agenda' exists somewhere store class in <agendaClass>
#        And I import <agendaClass>
#        And I evaluate 'Date dateTest = new Date(System.currentTimeMillis() + 10000)'
#        And I evaluate 'Agenda agendaTest = new Agenda("Test Agenda")'
#        And I evaluate 'Compromisso compTest = new Compromisso(dateTest, "compTest")'
#        And I evaluate 'agendaTest.novoCompromisso(compTest)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 5, 1)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 3, 1)'
#        And expression 'compTest.getAvisos().size() == 3' evaluates to <true>
#        And I evaluate 'agendaTest.cancela(compTest)'
#        Then award .1 points
#
#    Scenario: Check compromissos removal
#        Given expression 'agendaTest.getCompromissos().size()' evaluates to <0> 
#        Then award .1 points
#
##    Scenario: Check avisos canceled
##        Given expression 'compTest.getAvisos().size()' evaluates to <0> 
##        Then award .2 points
#
#    Scenario: Check avisos canceled
#        Given I evaluate 'aTest0 = compTest.getAvisos().get(0)'
#        And I evaluate 'aTest1 = compTest.getAvisos().get(1)'
#        And I evaluate 'aTest2 = compTest.getAvisos().get(2)'
#        And I get field 'state' value in super class of <aTest0> save in <state0>
#        And expression 'state0' evaluates to <3>
#        And I get field 'state' value in super class of <aTest1> save in <state1>
#        And expression 'state1' evaluates to <3>
#        And I get field 'state' value in super class of <aTest2> save in <state2>
#        And expression 'state2' evaluates to <3>
#        Then award .1 points
#
#
#    Scenario: Implement method cancela(Aviso) (0.2)
#        Given I report 'GRADING TASK 7...'
#        Given class 'Agenda' exists somewhere store class in <agendaClass>
#        And I import <agendaClass>
#        And I evaluate 'Date dateTest = new Date(System.currentTimeMillis() + 10000)'
#        And I evaluate 'Agenda agendaTest = new Agenda("Test Agenda")'
#        And I evaluate 'Compromisso compTest = new Compromisso(dateTest, "compTest")'
#        And I evaluate 'agendaTest.novoCompromisso(compTest)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 5, 1)'
#        And I evaluate 'aTest1 = compTest.getAvisos().get(1)'
#        And I evaluate 'agendaTest.cancela(aTest1)'
#        Then award .05 points
#
#    Scenario: Check if method cancela(Aviso) cancels aviso
#        Given I get field 'state' value in super class of <aTest1> save in <state1>
#        And expression 'state1' evaluates to <3>
#        Then award .05 points
#
#    Scenario: Check if method cancela(Aviso) removes aviso
#        Given expression 'compTest.getAvisos().contains(aTest1)' evaluates to <false>
#        Then award .1 points
#
#
#    Scenario: Implement method destroi() (0.2)
#        Given I report 'GRADING TASK 8...'
#        Given class 'Agenda' exists somewhere store class in <agendaClass>
#        And I import <agendaClass>
#        And I evaluate 'Date dateTest = new Date(System.currentTimeMillis() + 60000)'
#        And I evaluate 'Agenda agendaTest = new Agenda("Test Agenda")'
#        And I evaluate 'Compromisso compTest = new Compromisso(dateTest, "compTest")'
#        And I evaluate 'agendaTest.novoCompromisso(compTest)'
#        And I evaluate 'agendaTest.novoAviso(compTest, 30, 5)'
#        And I evaluate 'agendaTest.destroi()'
#        Then award .1 points
#        Given evaluating 'agendaTest.novoCompromisso(compTest)' throws instance of 'java.lang.IllegalStateException' save in <dummy>
#        Then award .1 points

    Scenario: Report final grade.
        Given I report grade formatted as 'FINAL GRADE: %.1f'
