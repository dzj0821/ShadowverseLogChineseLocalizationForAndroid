.class Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;
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
    .line 181
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->access$000(Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 186
    .local v0, "editDeckcode":Landroid/widget/EditText;
    :try_start_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment$3;->this$0:Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/MydeckEditFragment;->getDeckHash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method
