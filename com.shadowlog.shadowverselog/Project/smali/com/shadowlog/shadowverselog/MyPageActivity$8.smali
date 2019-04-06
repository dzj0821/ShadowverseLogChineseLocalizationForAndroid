.class Lcom/shadowlog/shadowverselog/MyPageActivity$8;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->initPopupWindow()V
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
    .line 452
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 455
    if-eqz p2, :cond_0

    .line 456
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 457
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 459
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 460
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 461
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 462
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 463
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 464
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 466
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 467
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$8;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$400(Lcom/shadowlog/shadowverselog/MyPageActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$500(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method
