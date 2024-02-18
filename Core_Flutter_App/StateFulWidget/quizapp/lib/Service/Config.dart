const url = 'http://192.168.0.111:8080/';
const register = "${url}auth/signup";
const login = '${url}auth/signin';
const  getUser = '${url}api/user';
const getCategoryQuiz = '${url}api/quiz/category-quiz?categoryId=';

const getQuestionByCat = "${url}api/quiz/all-quizQue?quizId=";

// http://192.168.0.112:8080/auth/signup
// http://192.168.0.112:8080/api/user
// http://192.168.0.111:8080/api/quiz/all-quizQue?quizId=1