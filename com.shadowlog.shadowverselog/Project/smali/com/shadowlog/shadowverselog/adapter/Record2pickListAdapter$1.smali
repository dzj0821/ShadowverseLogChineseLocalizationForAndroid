.class Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter;)Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/Record2pickListAdapter$1;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/mypage/Record2ListFragment;->onClickButtonCallback(II)V

    .line 101
    return-void
.end method
