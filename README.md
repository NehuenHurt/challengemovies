# 1-Import database "challengemovies"
# 2 -run the craft serve command to initialize the api
# 3-POST endpoint for login is api/auth/login
    You must enter in postman key email and password
    user test email : larainfo@gmail.com password : 123456
    postman will return a token that you must use every time you make a request to the api
# 4- POST endpoint refresh token jwt api/auth/refresh
    You must pass the token you currently have so that the api generates a new one
# 5-POST endpoint for movies api/movie 
    you must enter in postman to filter key filterfor and orderby for example "filterfor:drama" orderby: "ASC"
# 6-POST endpoint episode of a tv show api/episode 
    You must enter in postman key idtvShow and idepisode for example  
    idtvShow: 5  idepisode:1
# 7-POST endpoint create new user api/auth/register 
    You must enter in postman key name,email and password
# 8-there is a png file called entities, it is a representation of all the entities in the database
