This page indexes the FHIR JSON examples intended for Test Server integration scenarios. Examples are generated from the profiles in this guide.

The examples contain pseudonymization placeholders and illustrative values. They demonstrate profile-valid payloads. They do not establish deployment support or clinical guidance.

Where a scenario narrative conflicts with its structured template, the JSON follows the template: bloodletting specifies four sessions in the template but mentions five in the narrative, and sampling specifies wound fluid only in the template although the narrative also mentions a blood draw. For convention-centre education, the example follows the narrative frequency of three sessions per week, with a maximum of 30 sessions and no invented treatment duration.

## Nursing {#nursing}

### P2M

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-generic.json">
<summary>Generic nursing care</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-med-preparation-appendix-81.json">
<summary>Medication preparation, Annex 81 proposal</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-med-prep-not-refunded.json">
<summary>Medication prefill preparation, not refunded</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-de-convention-center.json">
<summary>Diabetes education via convention centre</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-de-within-start-trajectory.json">
<summary>Diabetes education within start trajectory</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-de-within-care-trajectory.json">
<summary>Diabetes education within care trajectory</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-de-without-care-trajectory.json">
<summary>Diabetes education without care trajectory</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-hygienic-care.json">
<summary>Assistance with personal hygiene</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-chronic-dialysis.json">
<summary>Chronic peritoneal dialysis</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-glycemic-test.json">
<summary>Glycemia test with glucometer</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-sampling.json">
<summary>Sampling</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-bloodletting.json">
<summary>Bloodletting</summary>
<pre><code class="language-json"></code></pre>
</details>

<details class="test-server-example" data-json="ServiceRequest-example-drp-nursing-parameters.json">
<summary>Measurement of parameters</summary>
<pre><code class="language-json"></code></pre>
</details>

<script>
document.querySelectorAll('details.test-server-example').forEach((details) => {
	details.addEventListener('toggle', async () => {
		if (!details.open || details.dataset.loaded) return;
		const code = details.querySelector('code');
		try {
			const response = await fetch(details.dataset.json);
			if (!response.ok) throw new Error('JSON request failed');
			const resource = await response.json();
			delete resource.language;
			delete resource.text;
			code.textContent = JSON.stringify(resource, null, 2);
			details.dataset.loaded = 'true';
			if (window.Prism) Prism.highlightElement(code);
		} catch {
			code.textContent = 'Unable to load this JSON example.';
		}
	});
});
</script>

### M2M

The Word scenarios provide four M2M Nursing creation payloads. Their requester references include the requesting organization's NIHII. The separate Task payloads for assignment and execution are workflow resources, not Nursing prescriptions.

{% include test-server-nursing-m2m.html %}

## Radiology

### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.

## Telemonitoring

### P2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use. The illustrative profile example is available in [Artifacts](ServiceRequest-example-drp-telemonitoring-chronic-heart-failure.json).

### M2M

Scenarios and expected JSON payloads have not yet been provided for Test Server use.
