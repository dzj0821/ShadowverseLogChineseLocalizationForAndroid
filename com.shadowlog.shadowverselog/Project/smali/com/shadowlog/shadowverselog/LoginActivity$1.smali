.class Lcom/shadowlog/shadowverselog/LoginActivity$1;
.super Landroid/webkit/WebViewClient;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/LoginActivity;->webViewFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/LoginActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/LoginActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/LoginActivity$1;->this$0:Lcom/shadowlog/shadowverselog/LoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "javascript:(function() { $(\'header\').css(\'display\',\'none\'); $(\'footer\').css(\'display\',\'none\'); })()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 82
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 99
    const-string v8, "shadowlog.com/s/mypage"

    invoke-virtual {p2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 102
    const-string v2, ""

    .local v2, "setID":Ljava/lang/String;
    const-string v3, ""

    .line 103
    .local v3, "setSession":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "cookie_branch":[Ljava/lang/String;
    array-length v9, v1

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v0, v1, v8

    .line 105
    .local v0, "cookie":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "tmp":[Ljava/lang/String;
    aget-object v10, v4, v7

    const-string v11, "id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    :cond_0
    aget-object v10, v4, v7

    const-string v11, "session_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "cookie":Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    iget-object v7, p0, Lcom/shadowlog/shadowverselog/LoginActivity$1;->this$0:Lcom/shadowlog/shadowverselog/LoginActivity;

    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 113
    .local v5, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 114
    const-string v7, "User_id"

    invoke-virtual {v5, v7, v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v7, "session_id"

    invoke-virtual {v5, v7, v3}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 119
    iget-object v7, p0, Lcom/shadowlog/shadowverselog/LoginActivity$1;->this$0:Lcom/shadowlog/shadowverselog/LoginActivity;

    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/LoginActivity;->toMypageActivity()V

    .line 123
    .end local v1    # "cookie_branch":[Ljava/lang/String;
    .end local v2    # "setID":Ljava/lang/String;
    .end local v3    # "setSession":Ljava/lang/String;
    .end local v5    # "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    :goto_1
    return v6

    :cond_3
    move v6, v7

    goto :goto_1
.end method
