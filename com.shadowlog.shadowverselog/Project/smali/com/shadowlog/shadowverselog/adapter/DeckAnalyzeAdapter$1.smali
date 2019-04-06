.class Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;
.super Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;
.source "DeckAnalyzeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;IIILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;
    .param p2, "num1"    # I
    .param p3, "num2"    # I
    .param p4, "num3"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    iput-object p5, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3, p4}, Lcom/shadowlog/shadowverselog/adapter/ArgOnclickListner;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->access$000(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;)Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->arg1:I

    iget v4, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->arg2:I

    iget v5, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->arg3:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onClickButtonCallback(IIII)V

    .line 105
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->this$0:Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;

    iget v2, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->arg3:I

    invoke-static {v1, v2}, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;->access$102(Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter;I)I

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/adapter/DeckAnalyzeAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f040078

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const v1, 0x7f040079

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    return-void
.end method
