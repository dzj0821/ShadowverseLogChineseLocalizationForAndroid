.class Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;
.super Ljava/lang/Object;
.source "DeckAnalyzeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->onClickPublicButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

.field final synthetic val$aid:I


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    iput p2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;->val$aid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 611
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;->this$0:Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;

    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 612
    .local v0, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 613
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f070086

    iget v3, p0, Lcom/shadowlog/shadowverselog/mypage/DeckAnalyzeFragment$6;->val$aid:I

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->newInstances(I)Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    move-result-object v3

    const-string v4, "ChildFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 614
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 615
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 616
    return-void
.end method
