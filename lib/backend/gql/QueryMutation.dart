class QueryMutation {

  static String login = """
      query Login(\$ID: String!, \$hashedPW: String!) {
        login(ID: \$ID, hashedPW: \$hashedPW)
        }
  """;

  static String signUp = """
      type Mutation {
          signup(ID: String!, hashedPW: String!, name: String!): NormalResponse
      }
  """;

  static String fileType = """
    FileType {
        HWP
        DOC
        TXT
        PDF
    }
  """;

  // static String interfaceResponse() {
  //   return """
  //   Response {
  //       code: Int!
  //       message: String!
  //       success: Boolean!
  //   }
  // """;
  // }
  //
  // static String normalResponse() {
  //   return """
  //   NormalResponse {
  //       code: Int!
  //       message: String!
  //       success: Boolean!
  //   }
  // """;
  // }
  //
  // static String creationQuestionResponse() {
  //   return """
  //   CreationQuestionResponse {
  //       code: Int!
  //       message: String!
  //       success: Boolean!
  //       questionId: Int!
  //   }
  // """;
  // }
  //
  // static String file() {
  //   return """
  //   File {
  //       url: String!
  //   }
  // """;
  // }
}


// static String Login = """
//   query Login(\$ID: String!, \$hashedPW: String!) {
//       login(ID: \$ID, hashedPW: \$hashedPW)
//   }
// """;
// static String Signup = """
//     mutation Signup(\$name: String!, \$ID: String!, \$hashedPW: String!) {
//       signup(name: \$name, ID: \$ID, hashedPW: \$hashedPW) {
//           code
//           success
//           message
//       }
//   }
//   """;
