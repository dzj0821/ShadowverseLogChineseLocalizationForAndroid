.class Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeTextViewInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTextWatcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeTextViewInput$1;

    .prologue
    .line 60
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 74
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 69
    return-void
.end method
