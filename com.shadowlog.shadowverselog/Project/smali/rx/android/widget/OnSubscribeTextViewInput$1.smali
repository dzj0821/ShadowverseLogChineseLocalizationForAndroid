.class Lrx/android/widget/OnSubscribeTextViewInput$1;
.super Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
.source "OnSubscribeTextViewInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/widget/OnSubscribeTextViewInput;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/widget/OnSubscribeTextViewInput;

.field final synthetic val$observer:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput;Lrx/Subscriber;)V
    .locals 1
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeTextViewInput;

    .prologue
    .line 38
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->val$observer:Lrx/Subscriber;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;-><init>(Lrx/android/widget/OnSubscribeTextViewInput$1;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 41
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->val$observer:Lrx/Subscriber;

    iget-object v1, p0, Lrx/android/widget/OnSubscribeTextViewInput$1;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    invoke-static {v1}, Lrx/android/widget/OnSubscribeTextViewInput;->access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lrx/android/widget/OnTextChangeEvent;->create(Landroid/widget/TextView;)Lrx/android/widget/OnTextChangeEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 42
    return-void
.end method
