.class public Lcom/shadowlog/shadowverselog/SignupActivity;
.super Landroid/app/Activity;
.source "SignupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 179
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/shadowlog/shadowverselog/TopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->finish()V

    .line 182
    const/4 v1, 0x1

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const-string v0, "SignupActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/SignupActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/function/CheckLogin;->run(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->toMypageActivity()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->webViewFunction()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "SignupActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "SignupActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "SignupActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 36
    const-string v0, "SignupActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "SignupActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    return-void
.end method

.method public toMypageActivity()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finishActionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->finish()V

    .line 141
    return-void
.end method

.method public webViewFunction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    const v3, 0x7f07009c

    invoke-virtual {p0, v3}, Lcom/shadowlog/shadowverselog/SignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 53
    .local v2, "myWebView":Landroid/webkit/WebView;
    const-string v3, "https://shadowlog.com/s/user/signup"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 63
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 64
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->flush()V

    .line 76
    :goto_0
    new-instance v3, Lcom/shadowlog/shadowverselog/SignupActivity$1;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/SignupActivity$1;-><init>(Lcom/shadowlog/shadowverselog/SignupActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 67
    .local v1, "cookieSyncMngr":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 68
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 69
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 70
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 71
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 72
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method
