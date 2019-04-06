.class final Lcom/shadowlog/shadowverselog/lib/Defines$1;
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
    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5148\u653b"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5f8c\u653b"

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/lib/Defines$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
