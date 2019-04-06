.class final Lrx/android/view/ViewActions$7;
.super Lrx/android/view/ViewAction1;
.source "ViewActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/view/ViewActions;->setText(Landroid/widget/TextView;)Lrx/functions/Action1;
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lrx/android/view/ViewAction1;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lrx/android/view/ViewActions$7;->call(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public call(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method
