.class public final Lrx/internal/operators/OperatorMergeMaxConcurrent;
.super Ljava/lang/Object;
.source "OperatorMergeMaxConcurrent.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final maxConcurrency:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxConcurrency"    # I

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent;->maxConcurrency:I

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMergeMaxConcurrent;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorMergeMaxConcurrent;, "Lrx/internal/operators/OperatorMergeMaxConcurrent<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 47
    .local v1, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 48
    .local v0, "csub":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 50
    new-instance v2, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorMergeMaxConcurrent;->maxConcurrency:I

    invoke-direct {v2, v3, v1, v0}, Lrx/internal/operators/OperatorMergeMaxConcurrent$SourceSubscriber;-><init>(ILrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    return-object v2
.end method
