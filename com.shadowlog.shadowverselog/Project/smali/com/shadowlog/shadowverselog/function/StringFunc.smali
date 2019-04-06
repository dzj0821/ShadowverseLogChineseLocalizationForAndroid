.class public Lcom/shadowlog/shadowverselog/function/StringFunc;
.super Ljava/lang/Object;
.source "StringFunc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mb_sTrimWidth(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "inStr"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "width"    # I
    .param p3, "footer"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, ""

    .line 10
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int v2, p1, p2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    return-object v0

    .line 13
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
