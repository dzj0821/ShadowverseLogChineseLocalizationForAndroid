.class Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$4;
.super Ljava/lang/Object;
.source "MydeckEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 200
    .local v0, "transaction2":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f070086

    invoke-static {}, Lcom/shadowlog/shadowverselog/mypage/MydeckChangerFragment;->newInstances()Lcom/shadowlog/shadowverselog/mypage/MydeckChangerFragment;

    move-result-object v2

    const-string v3, "ChildFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 203
    return-void
.end method
