.class Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "Record2pickListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;->val$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->access$100(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
