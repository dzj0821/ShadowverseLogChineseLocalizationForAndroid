.class final Lcom/shadowlog/shadowverselog/lib/Defines$3;
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
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "B\u30e9\u30f3\u30af/\u30a2\u30f3\u30ea\u30df"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "A\u30e9\u30f3\u30af/\u30a2\u30f3\u30ea\u30df"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AA\u30e9\u30f3\u30af/\u30a2\u30f3\u30ea\u30df"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Master/\u30a2\u30f3\u30ea\u30df"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "C\u30e9\u30f3\u30af\u4ee5\u4e0b/\u30a2\u30f3\u30ea\u30df"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u30d5\u30ea\u30fc"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2pick"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "B\u30e9\u30f3\u30af/\u30ed\u30fc\u30c6"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "A\u30e9\u30f3\u30af/\u30ed\u30fc\u30c6"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "AA\u30e9\u30f3\u30af/\u30ed\u30fc\u30c6"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Master/\u30ed\u30fc\u30c6"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
