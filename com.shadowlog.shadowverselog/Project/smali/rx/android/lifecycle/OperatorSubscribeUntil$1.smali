.class Lrx/android/lifecycle/OperatorSubscribeUntil$1;
.super Lrx/Subscriber;
.source "OperatorSubscribeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/lifecycle/OperatorSubscribeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

.field final synthetic val$parent:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/android/lifecycle/OperatorSubscribeUntil;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/lifecycle/OperatorSubscribeUntil;

    .prologue
    .line 39
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->this$0:Lrx/android/lifecycle/OperatorSubscribeUntil;

    iput-object p3, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 44
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/android/lifecycle/OperatorSubscribeUntil$1;, "Lrx/android/lifecycle/OperatorSubscribeUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/android/lifecycle/OperatorSubscribeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 54
    return-void
.end method
