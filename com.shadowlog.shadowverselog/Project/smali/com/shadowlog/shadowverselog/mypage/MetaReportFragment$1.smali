.class Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment$1;
.super Landroid/webkit/WebViewClient;
.source "MetaReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/MetaReportFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    #hack start
    sget-boolean v0, Lpers/dzj0821/shadowverselog/translate/Main;->webviewChanged:Z
    if-eqz v0, :translate
    const/4 v0, 0x0
    sput-boolean v0, Lpers/dzj0821/shadowverselog/translate/Main;->webviewChanged:Z
    goto :return
    :translate
    const/4 v0, 0x1
    sput-boolean v0, Lpers/dzj0821/shadowverselog/translate/Main;->webviewChanged:Z
    .line 87
    
    sget-object v0, Lpers/dzj0821/shadowverselog/translate/Main;->translateJS:Ljava/lang/String;
    
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    #hack end
    
    :return
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
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
