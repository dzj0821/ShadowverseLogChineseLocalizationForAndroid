.class final Lcom/shadowlog/shadowverselog/lib/Defines$4;
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
    .line 64
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 65
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "4\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "5\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "6\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "7\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "8\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "9\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "10\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "11\u30bf\u30fc\u30f3"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "12\u30bf\u30fc\u30f3\u2191"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
