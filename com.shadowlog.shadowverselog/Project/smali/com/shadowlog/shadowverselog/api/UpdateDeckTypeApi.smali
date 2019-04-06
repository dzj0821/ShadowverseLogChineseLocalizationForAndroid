.class public interface abstract Lcom/shadowlog/shadowverselog/api/UpdateDeckTypeApi;
.super Ljava/lang/Object;
.source "UpdateDeckTypeApi.java"


# virtual methods
.method public abstract getData()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/deck_type.json"
    .end annotation
.end method
