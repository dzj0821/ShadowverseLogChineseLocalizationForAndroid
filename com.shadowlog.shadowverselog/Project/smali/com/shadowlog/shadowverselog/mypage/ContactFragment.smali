.class public Lcom/shadowlog/shadowverselog/mypage/ContactFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContactFragment.java"


# static fields
.field private static URL:Ljava/lang/String;

.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "https://shadowlog.com/s/contact"

    sput-object v0, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/ContactFragment;
    .locals 2

    .prologue
    .line 30
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;-><init>()V

    .line 31
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/ContactFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v0, "ContactFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const-string v0, "ContactFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const v0, 0x7f090044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->view:Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->view:Landroid/view/View;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->webViewFunction(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "ContactFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->mWebView:Landroid/webkit/WebView;

    .line 135
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 127
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 111
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 106
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 121
    return-void
.end method

.method public webViewFunction(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 69
    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    .line 72
    .local v0, "myWebView":Landroid/webkit/WebView;
    sget-object v1, Lcom/shadowlog/shadowverselog/mypage/ContactFragment;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 81
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/ContactFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/ContactFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/ContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 99
    return-void
.end method
