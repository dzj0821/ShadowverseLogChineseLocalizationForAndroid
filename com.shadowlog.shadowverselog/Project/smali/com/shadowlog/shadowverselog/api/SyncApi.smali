.class public interface abstract Lcom/shadowlog/shadowverselog/api/SyncApi;
.super Ljava/lang/Object;
.source "SyncApi.java"


# virtual methods
.method public abstract getSyncData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "session_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "last_record"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "last_mydeck"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "last_label"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "last_2pick"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
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
        value = "/app/sync_api_v2.php"
    .end annotation
.end method
