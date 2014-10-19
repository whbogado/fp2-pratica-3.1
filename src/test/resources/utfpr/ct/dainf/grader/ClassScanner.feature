Feature: Avalia a Prática 3.1 de IF52C-Fundamentos de Programação 2
    Como professor da disciplica de Fundamentos de Programação 2
    Quero avaliar a prática 3.1
    A fim de verificar a compreensão dos estudantes

    Background:
        Given the maximum grade is 100
        Given the main class is 'Pratica31'
        Given I set the script timeout to 3000
        Given I evaluate 'import utfpr.ct.dainf.grader.*'
        Given I evaluate 'import java.util.regex.*'
    
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
        Given class <mainClass> declares field 'meuNome' save in <meuNomeField>
        And member <meuNomeField> has 'private' modifier
        And member <meuNomeField> has 'static' modifier
        And field <meuNomeField> is of type 'java.lang.String'
        Then award 10 points
        Given I evaluate 'testMain = new Pratica31()'
        Given I get field 'meuNome' value in super class of <testMain> save in <nomeTest>
        And I report <nomeTest>
        And I evaluate 'nomeTest = nomeTest.toLowerCase()'
        And I evaluate 'nameRegex = ".*" + TestUtils.formatName(nomeTest) + ".*"'
        And I evaluate 'upperRegex = ".*" + nomeTest.toUpperCase() + ".*"'
        Then award 5 points

    Scenario: Verifica o nome está todo em maiúsculas (15 pontos)
        Given I report 'Avaliando item 5...'
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        And <testOut> matches regex <upperRegex> with 'Pattern.DOTALL' option
        Then award 15 points

    Scenario: Verifica se o nome está corretamente formatado (20 pontos)
        Given I report 'Avaliando item 6...'
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        Given I get field 'meuNome' value in super class of <testMain> save in <nomeTest>
        And I report <nomeTest>
        And <testOut> matches regex <nameRegex> with 'Pattern.DOTALL' option
        Then award 20 points

    Scenario: Verifica o cálculo de dias decorridos (20 pontos)
        Given I report 'Avaliando item 7...'
        Given I evaluate 'testYear = (int)Math.round(1980 + Math.random() * 10)'
        Given I evaluate 'testMonth = (int)Math.round(Math.random() * 11)'
        Given I evaluate 'testDay = (int)Math.round(Math.random() * 27 + 1)'
        Given I evaluate 'testDate = new java.util.GregorianCalendar(testYear, testMonth, testDay)'
        Given I evaluate 'todayDate = new java.util.GregorianCalendar()'
        Given I evaluate 'daysEllapsed = (todayDate.getTime().getTime() - testDate.getTime().getTime()) / (24 * 3600 * 1000)'
        Given class <mainClass> declares field 'dataNascimento' save in <dataNascField>
        And member <dataNascField> has 'private' modifier
        And member <dataNascField> has 'static' modifier
        And field <dataNascField> is of type 'java.util.GregorianCalendar'
        Then award 5 points
        Given I set field 'dataNascimento' in <testMain> to <testDate>
        Then award 5 points
        Given I set output to <testOut>
        And I evaluate 'testMain.main(new String[0])'
        And I set output to <default>
        And I evaluate 'daysRegex = ".*" + daysEllapsed + ".*"'
        And <testOut> matches regex <daysRegex> with 'Pattern.DOTALL' option
        Then award 10 points

    Scenario: Verifica se o nome está corretamente formatado (20 pontos)
        Given I report 'Avaliando item 8...'
        Given I set output to <testOut>
        And I evaluate 'dateI = new java.util.Date(); testMain.main(new String[0]); dateF = new java.util.Date()'
        And I set output to <default>
        And I evaluate 'ellapsed = dateF.getTime() - dateI.getTime()'
        And I evaluate 'timeRegex = ".*" + ellapsed + ".*"'
        And <testOut> matches regex <timeRegex> with 'Pattern.DOTALL' option
        Then award 15 points

    Scenario: Report final grade.
        Given I report grade formatted as 'FINAL GRADE: %.1f'
