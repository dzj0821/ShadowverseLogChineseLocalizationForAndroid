.class public Lcom/shadowlog/shadowverselog/LogoutActivity;
.super Landroid/app/Activity;
.source "LogoutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const-string v2, "LogoutActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object v2, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/LogoutActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 25
    new-instance v0, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/LogoutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 27
    const-string v2, "offline"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 31
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shadowlog/shadowverselog/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/shadowlog/shadowverselog/LogoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/LogoutActivity;->finish()V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "LogoutActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "LogoutActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 46
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "LogoutActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 40
    return-void
.end method
