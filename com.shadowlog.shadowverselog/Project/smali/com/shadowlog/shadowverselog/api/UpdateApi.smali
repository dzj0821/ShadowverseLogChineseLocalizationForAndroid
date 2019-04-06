.class public interface abstract Lcom/shadowlog/shadowverselog/api/UpdateApi;
.super Ljava/lang/Object;
.source "UpdateApi.java"


# virtual methods
.method public abstract getData()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/update.json"
    .end annotation
.end method
