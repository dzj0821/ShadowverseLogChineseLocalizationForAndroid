.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$1;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$1;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07004e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 145
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x2bc

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 147
    return-void
.end method
