Feature: Validate API responses
  ADMISIONES_CRUD
  probe JSON reponses


Scenario Outline: To probe route code response  /admision
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"      

    Examples: 
    |method |route        |bodyreq                 |codres       |
    |GET    |/v1/admision |./files/req/Vacio.json  |200 OK       |
    |GET    |/v1/admisio  |./files/req/Vacio.json  |404 Not Found|
    |POST   |/v1/admisio  |./files/req/Vacio.json  |404 Not Found|
    |PUT    |/v1/admisio  |./files/req/Vacio.json  |404 Not Found|
    |DELETE |/v1/admisio  |./files/req/Vacio.json  |404 Not Found|

Scenario Outline: To probe response route /admision       
    When I send "<method>" request to "<route>" where body is json "<bodyreq>"
    Then the response code should be "<codres>"      
    And the response should match json "<bodyres>"

    Examples: 
    |method |route         |bodyreq                |codres     |bodyres                         |
    |POST   |/v1/admision  |./files/req/Vacio.json |200 OK     |./files/res0/Ierr6.json         |