.class Lcom/shadowlog/shadowverselog/MyPageActivity$17;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->initPopupWindow2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$900(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/MyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xf

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v4}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$800(Lcom/shadowlog/shadowverselog/MyPageActivity;)I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 919
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$1000(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0700cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$17$1;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$1000(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17$2;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$17$2;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$17;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$1000(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$17$3;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity$17;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 958
    return-void
.end method
