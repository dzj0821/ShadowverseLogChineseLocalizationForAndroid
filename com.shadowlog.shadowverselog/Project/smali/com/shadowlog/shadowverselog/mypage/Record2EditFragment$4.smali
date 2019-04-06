.class Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;
.super Ljava/lang/Object;
.source "Record2EditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->access$200(Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 184
    .local v0, "editDeckcode":Landroid/widget/EditText;
    :try_start_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment$4;->this$0:Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/mypage/Record2EditFragment;->getDeckHash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0
.end method
