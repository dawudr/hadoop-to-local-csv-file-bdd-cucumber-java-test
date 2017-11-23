Feature: PianoStream normal data folder structure
  Check is PianoStream job creates the correct file/directory structure
  for the collected pianoStream data

  Scenario: processing data from feed with product type Household
    Given a file with theme piano_feed containing the following lines
      | type        |
      | Household   |
    When I run the PianoStream job
    Then the following directory structure should be created:
      | Household/ |
    And folder 'Household/' should contain following files:
      | part-00000-00000 |

  Scenario: processing data from feed with product type from Household and Bakery
    Given a file with theme piano_feed containing the following lines
      | type            |
      | Household       |
      | Bakery          |
    When I run the PianoStream job
    Then the following directory structure should be created:
      | Household/ |
      | Bakery/ |
    And folder 'Household1/' should contain following files:
      | part-00000-00000 |
    And folder 'Bakery/' should contain following files too:
      | part-00000-00001 |
