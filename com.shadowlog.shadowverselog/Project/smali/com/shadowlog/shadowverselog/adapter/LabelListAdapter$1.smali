.class Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "LabelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;
    .param p2, "num"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    invoke-direct {p0, p2}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter;)Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/LabelListAdapter$1;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckLabelFragment;->onClickButtonCallback(II)V

    .line 105
    return-void
.end method
