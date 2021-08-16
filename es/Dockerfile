FROM docker.elastic.co/elasticsearch/elasticsearch:7.9.3

# https://github.com/codelibs/elasticsearch-analysis-kuromoji-ipadic-neologd
# RUN elasticsearch-plugin install org.codelibs:elasticsearch-analysis-kuromoji-ipadic-neologd:7.2.0
RUN elasticsearch-plugin install analysis-kuromoji
RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install analysis-smartcn
RUN elasticsearch-plugin install analysis-stempel