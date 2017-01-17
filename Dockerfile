FROM java:7
ENV FOO bar
WORKDIR /home/root/javahelloworld
RUN mkdir bin
COPY src src
RUN javac -d bin src/HelloWorld.java
CMD ["-cp", "bin", "HelloWorld"]
ENTRYPOINT ["java"]
