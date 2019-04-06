.class public Lrx/internal/operators/OperatorMerge;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMerge$InnerSubscriber;,
        Lrx/internal/operators/OperatorMerge$MergeProducer;,
        Lrx/internal/operators/OperatorMerge$MergeSubscriber;
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
.field private final delayErrors:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "delayErrors"    # Z

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean p1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    .line 83
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMerge;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorMerge;, "Lrx/internal/operators/OperatorMerge<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMerge$MergeSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorMerge;->delayErrors:Z

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorMerge$MergeSubscriber;-><init>(Lrx/Subscriber;Z)V

    return-object v0
.end method
