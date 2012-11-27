Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: App just runs
    When I run `gboom`
    Then the exit status should be 0
    And the output should contain:
    """
    NAME
        gboom - Create Gists from your command line like a pimp.

    SYNOPSIS
        gboom [global options] command [command options] [arguments...]

    VERSION
        0.0.7

    GLOBAL OPTIONS
        --help    - Show this message
        --version - 

    COMMANDS
        add  - Create a Gist from an existing file. You just gboom'ed!
        help - Shows a list of commands or help for one command
    """

    When I get help for "gboom"
    Then the exit status should be 0

    Given a file named "test.txt" with:
    """
    test content
    """
    When I add the file "test.txt" with "gboom add"
    Then the exit status should be 0 
    And the output should match:
    """
    GBoom!
    """
