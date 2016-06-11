package com.npu.edu;



public class NLP {
	
	
	
	/*static StanfordCoreNLP pipeline;
	public static void init() {
		System.out.println("Inside NLP p");
        pipeline = new StanfordCoreNLP("MyPropFile.properties");
    }
	
	public static int findSentiment(String tweet) {
		System.out.println("Inside NLP");
        int mainSentiment = 0;
        if (tweet != null && tweet.length() > 0) {
            int longest = 0;
            Annotation annotation = pipeline.process(tweet);
            for (CoreMap sentence : annotation
                    .get(CoreAnnotations.SentencesAnnotation.class)) {
                Tree tree = sentence
                        .get(SentimentCoreAnnotations.SentimentAnnotatedTree.class);
                int sentiment = RNNCoreAnnotations.getPredictedClass(tree);
                //System.out.println(sentiment);
                String partText = sentence.toString();
                if (partText.length() > longest) {
                    mainSentiment = sentiment;
                    longest = partText.length();
                }

            }
        }
         System.out.println(mainSentiment);
        return mainSentiment;
    }*/
}
