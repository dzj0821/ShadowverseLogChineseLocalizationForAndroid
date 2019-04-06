.class public Lcom/shadowlog/shadowverselog/TopActivity;
.super Landroid/app/Activity;
.source "TopActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initClickEvent()V
    .locals 7

    .prologue
    .line 38
    const v6, 0x7f07009b

    invoke-virtual {p0, v6}, Lcom/shadowlog/shadowverselog/TopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 39
    .local v3, "loginButton":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/TopActivity$1;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/TopActivity$1;-><init>(Lcom/shadowlog/shadowverselog/TopActivity;)V

    .line 48
    .local v0, "clickListener1":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v6, 0x7f07019f

    invoke-virtual {p0, v6}, Lcom/shadowlog/shadowverselog/TopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 52
    .local v5, "signupButton":Landroid/widget/Button;
    new-instance v1, Lcom/shadowlog/shadowverselog/TopActivity$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/TopActivity$2;-><init>(Lcom/shadowlog/shadowverselog/TopActivity;)V

    .line 61
    .local v1, "clickListener2":Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v6, 0x7f0700bd

    invoke-virtual {p0, v6}, Lcom/shadowlog/shadowverselog/TopActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 65
    .local v4, "offlineButton":Landroid/widget/Button;
    new-instance v2, Lcom/shadowlog/shadowverselog/TopActivity$3;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/TopActivity$3;-><init>(Lcom/shadowlog/shadowverselog/TopActivity;)V

    .line 80
    .local v2, "clickListener3":Landroid/view/View$OnClickListener;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    const-string v0, "TopActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/TopActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/TopActivity;->initClickEvent()V

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "TopActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 99
    const-string v0, "TopActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "TopActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "TopActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 30
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "TopActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 95
    return-void
.end method
