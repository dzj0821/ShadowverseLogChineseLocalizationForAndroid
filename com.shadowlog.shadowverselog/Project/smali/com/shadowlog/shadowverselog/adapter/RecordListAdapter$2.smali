.class Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;
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
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;
    .param p2, "num1"    # I
    .param p3, "num2"    # I

    .prologue
    .line 147
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    invoke-direct {p0, p2, p3}, Lcom/shadowlog/shadowverselog/adapter/ArgOnlongclickListener;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;->this$0:Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter;)Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;->arg1:I

    iget v3, p0, Lcom/shadowlog/shadowverselog/adapter/RecordListAdapter$2;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/shadowlog/shadowverselog/mypage/RecordListFragment;->onClickButtonCallback(III)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method
