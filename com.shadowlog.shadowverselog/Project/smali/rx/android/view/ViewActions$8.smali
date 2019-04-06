.class final Lrx/android/view/ViewActions$8;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setTextResource(Landroid/widget/TextView;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/android/view/ViewAction1",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lrx/android/view/ViewActions$8;->call(Landroid/widget/TextView;Ljava/lang/Integer;)V

    return-void
.end method

.method public call(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "resId"    # Ljava/lang/Integer;

    .prologue
    .line 184
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 185
    return-void
.end method
