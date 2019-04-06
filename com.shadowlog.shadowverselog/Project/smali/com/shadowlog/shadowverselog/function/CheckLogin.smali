.class public Lcom/shadowlog/shadowverselog/function/CheckLogin;
.super Ljava/lang/Object;
.source "CheckLogin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static run(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 13
    :try_start_0
    new-instance v3, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 14
    .local v3, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 15
    const-string v5, "User_id"

    invoke-virtual {v3, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 16
    .local v1, "u1":Ljava/lang/Integer;
    const-string v5, "session_id"

    invoke-virtual {v3, v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, "u2":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 20
    const/4 v4, 0x1

    .line 25
    .end local v1    # "u1":Ljava/lang/Integer;
    .end local v2    # "u2":Ljava/lang/String;
    .end local v3    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :cond_0
    :goto_0
    return v4

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
