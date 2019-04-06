.class public interface abstract Lcom/shadowlog/shadowverselog/api/DeckHashApi;
.super Ljava/lang/Object;
.source "DeckHashApi.java"


# virtual methods
.method public abstract getSyncData(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "code"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "j"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/get_deck.php"
    .end annotation
.end method
