.class final Lcom/shadowlog/shadowverselog/lib/Defines$6;
.super Ljava/util/HashMap;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shadowlog/shadowverselog/lib/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30a8\u30eb\u30d5"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30ed\u30a4\u30e4\u30eb"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30c9\u30e9\u30b4\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30cd\u30af\u30ed"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30a6\u30a3\u30c3\u30c1"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30f4\u30a1\u30f3\u30d1\u30a4\u30a2"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30d3\u30b7\u30e7\u30c3\u30d7"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30cd\u30e1\u30b7\u30b9"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method
