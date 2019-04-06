.class Lrx/android/widget/OnSubscribeTextViewInput$2;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Lrx/functions/Action0;


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

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lrx/android/widget/OnSubscribeTextViewInput;Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/widget/OnSubscribeTextViewInput;

    .prologue
    .line 45
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    iput-object p2, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->this$0:Lrx/android/widget/OnSubscribeTextViewInput;

    invoke-static {v0}, Lrx/android/widget/OnSubscribeTextViewInput;->access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lrx/android/widget/OnSubscribeTextViewInput$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 49
    return-void
.end method
