.class Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "RecordListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 140
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$1;->arg1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->onClickButtonCallback(III)V

    .line 144
    return-void
.end method
