.class public interface abstract Lcom/shadowlog/shadowverselog/api/FederateApi;
.super Ljava/lang/Object;
.source "FederateApi.java"


# virtual methods
.method public abstract getSyncData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "user_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "session_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "date"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "type"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "method"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "json"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/SyncStruct;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/post_api.php"
    .end annotation
.end method
