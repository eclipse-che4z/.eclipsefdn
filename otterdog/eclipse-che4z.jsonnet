local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('ecd.che.che4z', 'eclipse-che4z') {
  settings+: {
    description: "",
    name: "Eclipse Che4z",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('che-che4z') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Che Che4z",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://ci.eclipse.org/che4z/github-webhook/') {
          content_type: "json",
          events+: [
            "push"
          ],
        },
      ],
    },
    orgs.newRepo('che-che4z-explorer-for-endevor') {
      archived: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Explorer for Endevor is an extension that modernizes the way you interact with Endevor inventory locations and elements",
      homepage: "",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://ci.eclipse.org/che4z/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('E4E_TELEMETRY_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('OPENVSX_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('VSCODE_MARKETPLACE_TOKEN') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('che-che4z-lsp-for-cobol') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "COBOL Language Support provides autocomplete, highlighting and diagnostics for COBOL code and copybooks",
      homepage: "",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://ci.eclipse.org/che4z/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('TELEMETRY_INSTRUMENTATION_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('VSCE_PAT') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('che-che4z-lsp-for-hlasm') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "HLASM Language Support is an LSP extension that adds support for the High Level Assembler language to IDEs",
      homepage: "",
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://ci.eclipse.org/che4z/github-webhook/') {
          content_type: "json",
          events+: [
            "push"
          ],
        },
      ],
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('TELEMETRY_KEY') {
          value: "********",
        },
        orgs.newRepoSecret('WIKI_TOKEN') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('che-che4z-zos-resource-explorer') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "development",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      web_commit_signoff_required: false,
      webhooks: [
        orgs.newRepoWebhook('https://ci.eclipse.org/che4z/github-webhook/') {
          content_type: "json",
          events+: [
            "pull_request",
            "push"
          ],
        },
      ],
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}