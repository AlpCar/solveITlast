class Queries{
  static String signUp = """
    mutation Signup(\$name: String!, \$ID: String!, \$hashedPW: String!) {
      signup(name: \$name, ID: \$ID, hashedPW: \$hashedPW) {
        code
        success
        message
      }
    }
  """;

  static String logIn = """
    query Login(\$ID: String!, \$hashedPW: String!) {
      login(ID: \$ID, hashedPW: \$hashedPW)
    }
  """;

  static String userInfo = """
    query Profile(\$ID: String) {
        profile(ID: \$ID) {
            ownerId
            nickname
            experience
            point
            tier
            favorites{
                id
                name
            }
            solveCount
            correctCount
        }
    }
  """;

  static String getTag = """
    query GetTag(\$testId: ID!) {
        tagsOfTest(testId: \$testId) {
            id
            name
            ownerId
            creationDate
            testId
        }
    }
  """;

  static String createTag = """
    mutation CreateTag(\$name: String!, \$testId: ID!){
      createTag(name: \$name, testId: \$testId){
          code
          success
          message
      }
    }
  """;

  static String createReport = """
    mutation CreateReport(\$input: CreateReportInput!){
        createReport(input: \$input){
            code
            success
            message
        }
    }
  """;



  static String updateUserInfo = """
    mutation UpdateUserInfo(\$name: String, \$favorite: [String!]!) {
      updateProfile(name: \$name, favorite: \$favorite){
        success
        code
        message
      }
    }
  """;

  static String allTestsCount = """
    query AllTestsCount {
          allTestsCount
    }
  """;

  static String likeCount = """
    query LikesCount(\$id: ID!){
        testLikesCount(id: \$id)
    }
  """;

  static String getLike = """
    query Like(\$testId: ID!, \$userId: ID){
          like(testId: \$testId, userId: \$userId)
    }
  """;

  static String getCoupon = """
     query GetCoupon{
        coupons{
            id
            name
            explanation
            price
        }
    }
  """;

  static String buyCoupons = """
    mutation BuyCoupon(\$couponID: ID!, \$count: Int!){
        issueCoupon(couponID: \$couponID, count: \$count){
            code
            success
            message
        }
    }
  """;

  static String myCoupons = """
    query MyCoupons{
        myCoupons{
            coupon{
                name
                explanation
                price
            }
            count
        }
    }
  """;

  static String myCreateList = """
     query TestByCreator(\$id: ID!){
        testsByCreator(id: \$id){
            id
            name
            ownerId
            tryCnt
            like
        }
    }
  """;

  static String statistics = """//STATISTICS
    query Statistics(\$ID: String) {
        statistics(ID: \$ID) {
            try_count
            correct_count
            category_log{
                category
                try_count
                correct_count
            }
        }
    }
  """;

  static String nickname= """//NICKNAME
    query GetMyname(\$ID: String) {
        profile(ID: \$ID) {
            nickname
            ownerId
            role
            favorites{
                id
                name
            }
        }
    }
  """;

  static String userCategory = """
     query GetMyCategory(\$ID: String) {
      profile(ID: \$ID) {
          nickname
          ownerId
          role
          favorites{
              id
              name
          }
      }
    }
  """;

  static String testInfo = """ //TEST_INFO
  query getTestInfo(\$id: ID!) {
    test(id: \$id) {
      id
      name
      content
      ownerId
      tryCnt
    }
  }
  """;

  static String allTestList = """//ALLTESTLIST
  query GetAllTestList(\$page: Int!) {
    allTests(page: \$page){
      id
      name
      ownerId
      tryCnt
      like
    }
  }
  """;

  static String rakingList= """//RANKINGLIST
  query GetRankingList(\$page: Int!) {
    allTests(page: \$page ){
      id
      name
      ownerId
      tryCnt
      like
    }
  }
  """;

  static String myTest = """//MYTEST
  query MyTestList{
    mySolvingTests{
      id
      name
      ownerId
      tryCnt
      like
    }
  }
  """;

  static String createTest = """ //CREATE_TEST
  mutation CreateTest (\$input: CreateTestInput) {
    createTest(input: \$input) {
      success
    }
  }
  """;

  static String likeTest = """ //LIKE_TEST
  mutation LikeTest(\$id: ID!){
    likeTest(id: \$id){
      success
    }
  }
  """;

  static String unlikeTest = """//UNLIKE_TEST
  mutation unLikeTest(\$id: ID!){
    unlikeTest(id: \$id){
      success
    }
  }
  """;

  static String difficulty = """//DIFFICULTY
  mutation Difficulty(\$questionId: ID!, \$difficulty: Int!){
    contributeDifficulty(questionId: \$questionId, difficulty: \$difficulty){
      success
    }
  }
  """;



  static String testListCategory = """
    query GetByCategory(\$id: ID!){
      testsByCategory(id: \$id){
        id
        name
        ownerId
        tryCnt
        testCategory{
            id
            name
        }
        like
      }
    }
  """;

  static String takeTest = """//TAKE_TEST
    query getTestInfo(\$id: ID!) {
        test(id: \$id) {
            id
            name
            content
            ownerId
            tryCnt
            testCategory{
                id
                name
            }
        }
    }
  """;

  static String getQuestion = """//GET_QUESTION
    query getQuestion(\$id: ID!){
      question(id: \$id){
          id
          name
          paragraph
          type
          difficulty{
              id
              name
          }
          ... on MultipleChoice {
              candidates {
                  number
                  content
              }
          }
          ...on CodingTest {
              testCases {
                  input
                  outputs
              }
          }
      }
    }
  """;

  static String getFullQuestion = """//GET_FULL_QUESTION
   query getQuestion(\$id: ID!){
      question(id: \$id){
          id
          name
          paragraph
          type
          explanation
          difficulty {
              id
              name
          }
          ... on MultipleChoice {
              candidates {
                  number
                  content
              }
          }
      }
    }
  """;

  static String submitQuestion= """//SUBMIT_QUESTION
  mutation submitQuestionAnswer(\$testId: ID!, \$questionId: ID!, \$answers: String!) {
    submitAnswer(testId: \$testId, questionId: \$questionId, answers: \$answers) {
      code
      success
      message
    }
  }
  """;

  static String judgeAnswers= """//JUDGE_ANSWERS
  mutation judgeAnswers(\$testId: ID!) {
    judgeAnswers(testId: \$testId) {
      code
      success
      message
    }
  }
  """;

  static String testResult = """//TEST_RESULT
  query testJudgeResult(\$testId: ID!) {
    testAnswers(testId: \$testId) {
      correctAnswer
      myAnswer
      is_correct
      questionId
    }
  }
  """;

  static String getReviewNote = """ //GET_REVIEWNOTE
  query ReviewNote(\$questionId: ID!){
    reviewNote(questionId: \$questionId){
      id
      ownerId
      questionId
      explanation
    }
  }
  """;

  static String reviewNote = """ //REVIEWNOTE
  mutation CreateReviewNote(\$input: createReviewNoteInput!){
    createReviewNote(input: \$input){
      code
      success
      message
    }
  }
  """;

  static String allAsking = """//ALLASKING
  query GetAllAsking(\$page: Int!){
    allAsking(page: \$page){
      id
      title
      content
      ownerId
      creationDate
      questionId
    }
  }
  """;

  static String asking = """ //ASKING
  mutation CreateAsking(\$input: CreateAskingInput!){
    createAsking(input: \$input){
      code
      success
      message
    }
  }
  """;

  static String getAsking = """//GET_ASKING
  query AskingByQuestion(\$id: ID!){
    askingByQuestion(id: \$id){
      id
      title
      content
      ownerId
      creationDate
      questionId
    }
  }
  """;

  static String askingInfo = """//ASKINGINFO
  query GetAsking(\$askingId: ID!){
    asking(askingId: \$askingId){
      id
      title
      content
      ownerId
      creationDate
      questionId
    }
  }
  """;

  static String createReply= """//CREATE_REPLY
  mutation CreateReply(\$input: CreateReplyInput!){
    createReply(input: \$input){
      code
      success
      message
    }
  }
  """;

  static String getReply = """//GET_REPLY
  query GetReply(\$id: ID!){
      repliesByAsking(id: \$id){
      id
      content
      ownerId
      creationDate
      askingId
    }
  }
  """;

  static String deleteReply = """//DELETE_REPLY
  mutation CreateReply(\$id: ID!){
    deleteReply(id: \$id){
      code
      success
      message
    }
  }
  """;

}