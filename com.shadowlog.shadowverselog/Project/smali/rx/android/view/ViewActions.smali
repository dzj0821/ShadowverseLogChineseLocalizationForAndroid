.class public final Lrx/android/view/ViewActions;
.super Ljava/lang/Object;
.source "ViewActions.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setActivated(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lrx/android/view/ViewActions$2;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$2;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setClickable(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lrx/android/view/ViewActions$3;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setEnabled(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lrx/android/view/ViewActions$1;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setFocusable(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lrx/android/view/ViewActions$4;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$4;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setSelected(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    new-instance v0, Lrx/android/view/ViewActions$5;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$5;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setText(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const-string v0, "textView"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    new-instance v0, Lrx/android/view/ViewActions$7;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$7;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static setTextResource(Landroid/widget/TextView;)Lrx/functions/Action1;
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "textView"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    new-instance v0, Lrx/android/view/ViewActions$8;

    invoke-direct {v0, p0}, Lrx/android/view/ViewActions$8;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public static setVisibility(Landroid/view/View;)Lrx/functions/Action1;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lrx/android/view/ViewActions;->setVisibility(Landroid/view/View;I)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method public static setVisibility(Landroid/view/View;I)Lrx/functions/Action1;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibilityOnFalse"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "view"

    invoke-static {p0, v0}, Lrx/android/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Binding false to VISIBLE has no effect and is thus disallowed."

    invoke-static {v0, v1}, Lrx/android/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 141
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid visibility value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Lrx/android/view/ViewActions$6;

    invoke-direct {v0, p0, p1}, Lrx/android/view/ViewActions$6;-><init>(Landroid/view/View;I)V

    return-object v0
.end method
