.class Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "MydeckListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;ILandroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;->this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    iput-object p3, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;->val$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter$3;->this$0:Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;->access$100(Lcom/shadowlog/shadowverselog/adapter/MydeckListAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
