.class Lrx/internal/operators/OperatorTakeUntil$1;
.super Lrx/Subscriber;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeUntil;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeUntil;

.field final synthetic val$parent:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeUntil;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OperatorTakeUntil;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p2, "op":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntil$1;->this$0:Lrx/internal/operators/OperatorTakeUntil;

    iput-object p3, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntil$1;, "Lrx/internal/operators/OperatorTakeUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntil$1;->val$parent:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 56
    return-void
.end method
