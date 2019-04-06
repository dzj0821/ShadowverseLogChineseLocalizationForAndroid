.class Lrx/android/widget/OnSubscribeTextViewInput;
.super Ljava/lang/Object;
.source "OnSubscribeTextViewInput.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/widget/OnSubscribeTextViewInput$SimpleTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lrx/android/widget/OnTextChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final emitInitialValue:Z

.field private final input:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Z)V
    .locals 0
    .param p1, "input"    # Landroid/widget/TextView;
    .param p2, "emitInitialValue"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    .line 32
    iput-boolean p2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->emitInitialValue:Z

    .line 33
    return-void
.end method

.method static synthetic access$100(Lrx/android/widget/OnSubscribeTextViewInput;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lrx/android/widget/OnSubscribeTextViewInput;

    .prologue
    .line 26
    iget-object v0, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/widget/OnSubscribeTextViewInput;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/android/widget/OnTextChangeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/android/widget/OnTextChangeEvent;>;"
    invoke-static {}, Lrx/android/internal/Assertions;->assertUiThread()V

    .line 38
    new-instance v1, Lrx/android/widget/OnSubscribeTextViewInput$1;

    invoke-direct {v1, p0, p1}, Lrx/android/widget/OnSubscribeTextViewInput$1;-><init>(Lrx/android/widget/OnSubscribeTextViewInput;Lrx/Subscriber;)V

    .line 45
    .local v1, "watcher":Landroid/text/TextWatcher;
    new-instance v2, Lrx/android/widget/OnSubscribeTextViewInput$2;

    invoke-direct {v2, p0, v1}, Lrx/android/widget/OnSubscribeTextViewInput$2;-><init>(Lrx/android/widget/OnSubscribeTextViewInput;Landroid/text/TextWatcher;)V

    invoke-static {v2}, Lrx/android/AndroidSubscriptions;->unsubscribeInUiThread(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    .line 52
    .local v0, "subscription":Lrx/Subscription;
    iget-boolean v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->emitInitialValue:Z

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    invoke-static {v2}, Lrx/android/widget/OnTextChangeEvent;->create(Landroid/widget/TextView;)Lrx/android/widget/OnTextChangeEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget-object v2, p0, Lrx/android/widget/OnSubscribeTextViewInput;->input:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 58
    return-void
.end method
