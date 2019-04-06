.class public final Lrx/internal/operators/OperatorAsObservable;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAsObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorAsObservable;, "Lrx/internal/operators/OperatorAsObservable<TT;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    return-object p1
.end method
