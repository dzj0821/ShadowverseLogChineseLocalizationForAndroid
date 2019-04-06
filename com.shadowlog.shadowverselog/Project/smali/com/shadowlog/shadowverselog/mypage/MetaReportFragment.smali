.class public Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;
.super Landroid/support/v4/app/Fragment;
.source "MetaReportFragment.java"


# static fields
.field private static URL:Ljava/lang/String;

.field private static fm:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "https://shadowlog.com/s/trend/"

    sput-object v0, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;->URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;
    .locals 2

    .prologue
    .line 28
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;-><init>()V

    .line 29
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const-string v0, "MetaReportFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 49
    const-string v2, "MetaReportFragment"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v2, 0x7f090039

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0701e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 52
    .local v0, "mWebView":Landroid/webkit/WebView;
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    new-instance v2, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment$1;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    sget-object v2, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;->URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "MetaReportFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 74
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 89
    return-void
.end method
