.class Lcom/shadowlog/shadowverselog/MyPageActivity$14;
.super Ljava/lang/Object;
.source "MyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/MyPageActivity;->setDatePickerFunction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

.field final synthetic val$dateBox4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/MyPageActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/MyPageActivity;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$14;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    iput-object p2, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$14;->val$dateBox4:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 645
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 646
    .local v6, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$14;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$700(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->getJx()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$14;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/MyPageActivity;->access$700(Lcom/shadowlog/shadowverselog/MyPageActivity;)Lcom/shadowlog/shadowverselog/struct/MultUnix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/struct/MultUnix;->putJxTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 647
    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/MyPageActivity$14;->this$0:Lcom/shadowlog/shadowverselog/MyPageActivity;

    new-instance v2, Lcom/shadowlog/shadowverselog/MyPageActivity$14$1;

    invoke-direct {v2, p0}, Lcom/shadowlog/shadowverselog/MyPageActivity$14$1;-><init>(Lcom/shadowlog/shadowverselog/MyPageActivity$14;)V

    const/16 v3, 0xb

    .line 656
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    .line 657
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 660
    .local v0, "dateDialog":Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 661
    return-void
.end method
